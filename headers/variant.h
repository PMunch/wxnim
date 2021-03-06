/////////////////////////////////////////////////////////////////////////////
// Name:        wx/variant.h
// Purpose:     wxVariant class, container for any type
// Author:      Julian Smart
// Modified by:
// Created:     10/09/98
// Copyright:   (c) Julian Smart
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_VARIANT_H_
#define _WX_VARIANT_H_

#include "wx/defs.h"

#if wxUSE_VARIANT

#include "wx/object.h"
#include "wx/string.h"
#include "wx/arrstr.h"
#include "wx/list.h"
#include "wx/cpp.h"
#include "wx/longlong.h"

#if wxUSE_DATETIME
    #include "wx/datetime.h"
#endif // wxUSE_DATETIME

#include "wx/iosfwrap.h"

#inheritable wxClassInfo
class WXDLLIMPEXP_BASE wxClassInfo
{};

class WXDLLIMPEXP_BASE wxDynamicClassInfo : public wxClassInfo
{};

class wxAny;

/*
 * wxVariantData stores the actual data in a wxVariant object,
 * to allow it to store any type of data.
 * Derive from this to provide custom data handling.
 *
 * NB: When you construct a wxVariantData, it will have refcount
 *     of one. Refcount will not be further increased when
 *     it is passed to wxVariant. This simulates old common
 *     scenario where wxVariant took ownership of wxVariantData
 *     passed to it.
 *     If you create wxVariantData for other reasons than passing
 *     it to wxVariant, technically you are not required to call
 *     DecRef() before deleting it.
 *
 * TODO: in order to replace wxPropertyValue, we would need
 * to consider adding constructors that take pointers to C++ variables,
 * or removing that functionality from the wxProperty library.
 * Essentially wxPropertyValue takes on some of the wxValidator functionality
 * by storing pointers and not just actual values, allowing update of C++ data
 * to be handled automatically. Perhaps there's another way of doing this without
 * overloading wxVariant with unnecessary functionality.
 */

class WXDLLIMPEXP_BASE wxVariantData : public wxObjectRefData
{
    friend class wxVariant;
public:
    wxVariantData() { }

    // Override these to provide common functionality
    virtual bool Eq(wxVariantData& data) const = 0;

    virtual bool Write(wxString& WXUNUSED(str)) const { return false; }

    virtual bool Read(wxString& WXUNUSED(str)) { return false; }
    // What type is it? Return a string name.
    virtual wxString GetType() const = 0;
    // If it based on wxObject return the ClassInfo.
    virtual wxClassInfo* GetValueClassInfo() { return NULL; }

    // Implement this to make wxVariant::UnShare work. Returns
    // a copy of the data.
    virtual wxVariantData* Clone() const { return NULL; }

    // Converts value to wxAny, if possible. Return true if successful.
    virtual bool GetAsAny(wxAny* WXUNUSED(any)) const { return false; }

protected:
    // Protected dtor should make some incompatible code
    // break more louder. That is, they should do data->DecRef()
    // instead of delete data.
    virtual ~wxVariantData() { }
};

/*
 * wxVariant can store any kind of data, but has some basic types
 * built in.
 */

class WXDLLIMPEXP_FWD_BASE wxVariant;

//WX_DECLARE_LIST_WITH_DECL(wxVariant, wxVariantList, class WXDLLIMPEXP_BASE);

class WXDLLIMPEXP_BASE wxVariant: public wxObject
{
public:
    wxVariant();

    wxVariant(const wxVariant& variant);
    wxVariant(wxVariantData* data, const wxString& name = wxEmptyString);

    wxVariant(const wxAny& any);

    virtual ~wxVariant();

    // generic assignment
    void operator= (const wxVariant& variant);

    // Assignment using data, e.g.
    // myVariant = new wxStringVariantData("hello");
    void operator= (wxVariantData* variantData);

    bool operator== (const wxVariant& variant) const;

    // Sets/gets name
    inline void SetName(const wxString& name) { m_name = name; }
    inline const wxString& GetName() const { return m_name; }

    // Tests whether there is data
    bool IsNull() const;

    // For compatibility with wxWidgets <= 2.6, this doesn't increase
    // reference count.
    wxVariantData* GetData() const
    {
        return (wxVariantData*) m_refData;
    }
    void SetData(wxVariantData* data) ;

    // make a 'clone' of the object
    void Ref(const wxVariant& clone) { wxObject::Ref(clone); }

    // ensure that the data is exclusive to this variant, and not shared
    bool Unshare();

    // Make NULL (i.e. delete the data)
    void MakeNull();

    // Delete data and name
    void Clear();

    // Returns a string representing the type of the variant,
    // e.g. "string", "bool", "stringlist", "list", "double", "long"
    wxString GetType() const;

    bool IsType(const wxString& type) const;
    bool IsValueKindOf(const wxClassInfo* type) const;

    // write contents to a string (e.g. for debugging)
    wxString MakeString() const;

    wxAny GetAny() const;


    // double
    wxVariant(double val, const wxString& name = wxEmptyString);
    bool operator== (double value) const;
    void operator= (double value) ;
    inline double GetReal() const { return GetDouble(); }
    double GetDouble() const;

    // long
    wxVariant(long val, const wxString& name = wxEmptyString);
    bool operator== (long value) const;
    void operator= (long value) ;
    inline long GetInteger() const { return GetLong(); }
    long GetLong() const;

    // bool
    wxVariant(bool val, const wxString& name = wxEmptyString);
    bool operator== (bool value) const;
    void operator= (bool value) ;
    bool GetBool() const ;

    // wxDateTime
    wxVariant(const wxDateTime& val, const wxString& name = wxEmptyString);
    bool operator== (const wxDateTime& value) const;
    void operator= (const wxDateTime& value) ;
    wxDateTime GetDateTime() const;

    // wxString
    wxVariant(const wxString& val, const wxString& name = wxEmptyString);
    // these overloads are necessary to prevent the compiler from using bool
    // version instead of wxString one:
    wxVariant(const char* val, const wxString& name = wxEmptyString);

    bool operator== (const wxString& value) const;
    wxVariant& operator=(const wxString& value);
    // these overloads are necessary to prevent the compiler from using bool
    // version instead of wxString one:
    wxVariant& operator=(const char* value)
        { return *this = wxString(value); }
    wxVariant& operator=(const wxCStrData& value)
        { return *this = value.AsString(); }
    template<typename T>
    wxVariant& operator=(const wxScopedCharTypeBuffer<T>& value)
        { return *this = value.data(); }

    wxString GetString() const;

    // wxUniChar
    wxVariant(const wxUniChar& val, const wxString& name = wxEmptyString);
    wxVariant(char val, const wxString& name = wxEmptyString);
    bool operator==(const wxUniChar& value) const;
    bool operator==(char value) const { return *this == wxUniChar(value); }
    wxVariant& operator=(const wxUniChar& value);
    wxVariant& operator=(char value) { return *this = wxUniChar(value); }
    wxUniChar GetChar() const;

    // wxArrayString
    wxVariant(const wxArrayString& val, const wxString& name = wxEmptyString);
    bool operator== (const wxArrayString& value) const;
    void operator= (const wxArrayString& value);
    wxArrayString GetArrayString() const;

    // void*
    wxVariant(void* ptr, const wxString& name = wxEmptyString);
    bool operator== (void* value) const;
    void operator= (void* value);
    void* GetVoidPtr() const;

    // wxObject*
    wxVariant(wxObject* ptr, const wxString& name = wxEmptyString);
    bool operator== (wxObject* value) const;
    void operator= (wxObject* value);
    wxObject* GetWxObjectPtr() const;


    // wxLongLong
    wxVariant(wxLongLong, const wxString& name = wxEmptyString);
    bool operator==(wxLongLong value) const;
    void operator=(wxLongLong value);
    wxLongLong GetLongLong() const;

    // ------------------------------
    // list operations
    // ------------------------------

    // Treat a list variant as an array
    wxVariant operator[] (size_t idx) const;
    wxVariant& operator[] (size_t idx) ;

    // Return the number of elements in a list
    size_t GetCount() const;

    // Make empty list
    void NullList();

    // Append to list
    void Append(const wxVariant& value);

    // Insert at front of list
    void Insert(const wxVariant& value);

    // Returns true if the variant is a member of the list
    bool Member(const wxVariant& value) const;

    // Deletes the nth element of the list
    bool Delete(size_t item);

    // Clear list
    void ClearList();

public:
    // Type conversion
    bool Convert(long* value) const;
    bool Convert(bool* value) const;
    bool Convert(double* value) const;
    bool Convert(wxString* value) const;
    bool Convert(wxUniChar* value) const;
    bool Convert(char* value) const;

    bool Convert(wxDateTime* value) const;

    bool Convert(wxLongLong* value) const;

// Attributes
protected:
    virtual wxObjectRefData *CreateRefData() const;
    virtual wxObjectRefData *CloneRefData(const wxObjectRefData *data) const;
};


//
// wxVariant <-> wxAny conversion code
//
#if wxUSE_ANY

#include "wx/any.h"

// In order to convert wxAny to wxVariant, we need to be able to associate
// wxAnyValueType with a wxVariantData factory function.
typedef wxVariantData* (*wxVariantDataFactory)(const wxAny& any);

// Actual Any-to-Variant registration must be postponed to a time when all
// global variables have been initialized. Hence this arrangement.
// wxAnyToVariantRegistration instances are kept in global scope and
// wxAnyValueTypeGlobals in any.cpp will use their data when the time is
// right.
#inheritable wxAnyToVariantRegistration
class WXDLLIMPEXP_BASE wxAnyToVariantRegistration
{
public:
    wxAnyToVariantRegistration(wxVariantDataFactory factory);
    virtual ~wxAnyToVariantRegistration();

    virtual wxAnyValueType* GetAssociatedType() = 0;
    wxVariantDataFactory GetFactory() const { return m_factory; }
private:
    wxVariantDataFactory    m_factory;
};

template<typename T>
class wxAnyToVariantRegistrationImpl : public wxAnyToVariantRegistration
{
public:
    wxAnyToVariantRegistrationImpl(wxVariantDataFactory factory)
        : wxAnyToVariantRegistration(factory)
    {
    }

    virtual wxAnyValueType* GetAssociatedType()
    {
        return wxAnyValueTypeImpl<T>::GetInstance();
    }
private:
};

#def DECLARE_WXANY_CONVERSION() \
virtual bool GetAsAny(wxAny* any) const; \
static wxVariantData* VariantDataFactory(const wxAny& any);

#def _REGISTER_WXANY_CONVERSION(T, CLASSNAME, FUNC) \
static wxAnyToVariantRegistrationImpl<T> \
    gs_##CLASSNAME##AnyToVariantRegistration = \
    wxAnyToVariantRegistrationImpl<T>(&FUNC);

#def REGISTER_WXANY_CONVERSION(T, CLASSNAME) \
_REGISTER_WXANY_CONVERSION(T, CLASSNAME, CLASSNAME::VariantDataFactory)

#def IMPLEMENT_TRIVIAL_WXANY_CONVERSION(T, CLASSNAME) \
bool CLASSNAME::GetAsAny(wxAny* any) const \
{ \
    *any = m_value; \
    return true; \
} \
wxVariantData* CLASSNAME::VariantDataFactory(const wxAny& any) \
{ \
    return new CLASSNAME(wxANY_AS(any, T)); \
} \
REGISTER_WXANY_CONVERSION(T, CLASSNAME)

#endif // if !wxUSE_ANY



#def DECLARE_VARIANT_OBJECT(classname) \
    DECLARE_VARIANT_OBJECT_EXPORTED(classname, wxEMPTY_PARAMETER_VALUE)

#def DECLARE_VARIANT_OBJECT_EXPORTED(classname,expdecl) \
expdecl classname& operator << ( classname &object, const wxVariant &variant ); \
expdecl wxVariant& operator << ( wxVariant &variant, const classname &object );

#def IMPLEMENT_VARIANT_OBJECT(classname) \
    IMPLEMENT_VARIANT_OBJECT_EXPORTED(classname, wxEMPTY_PARAMETER_VALUE)

#def IMPLEMENT_VARIANT_OBJECT_EXPORTED_NO_EQ(classname,expdecl) \
class classname##VariantData: public wxVariantData \
{ \
public:\
    classname##VariantData() {} \
    classname##VariantData( const classname &value ) { m_value = value; } \
\
    classname &GetValue() { return m_value; } \
\
    virtual bool Eq(wxVariantData& data) const; \
\
    virtual wxString GetType() const; \
    virtual wxClassInfo* GetValueClassInfo(); \
\
    virtual wxVariantData* Clone() const { return new classname##VariantData(m_value); } \
\
    DECLARE_WXANY_CONVERSION() \
protected:\
    classname m_value; \
};\
\
wxString classname##VariantData::GetType() const\
{\
    return m_value.GetClassInfo()->GetClassName();\
}\
\
wxClassInfo* classname##VariantData::GetValueClassInfo()\
{\
    return m_value.GetClassInfo();\
}\
\
expdecl classname& operator << ( classname &value, const wxVariant &variant )\
{\
    wxASSERT( variant.GetType() == #classname );\
    \
    classname##VariantData *data = (classname##VariantData*) variant.GetData();\
    value = data->GetValue();\
    return value;\
}\
\
expdecl wxVariant& operator << ( wxVariant &variant, const classname &value )\
{\
    classname##VariantData *data = new classname##VariantData( value );\
    variant.SetData( data );\
    return variant;\
} \
IMPLEMENT_TRIVIAL_WXANY_CONVERSION(classname, classname##VariantData)

// implements a wxVariantData-derived class using for the Eq() method the
// operator== which must have been provided by "classname"
#def IMPLEMENT_VARIANT_OBJECT_EXPORTED(classname,expdecl) \
IMPLEMENT_VARIANT_OBJECT_EXPORTED_NO_EQ(classname,wxEMPTY_PARAMETER_VALUE expdecl) \
\
bool classname##VariantData::Eq(wxVariantData& data) const \
{\
    wxASSERT( GetType() == data.GetType() );\
\
    classname##VariantData & otherData = (classname##VariantData &) data;\
\
    return otherData.m_value == m_value;\
}\


// implements a wxVariantData-derived class using for the Eq() method a shallow
// comparison (through wxObject::IsSameAs function)
#def IMPLEMENT_VARIANT_OBJECT_SHALLOWCMP(classname) \
    IMPLEMENT_VARIANT_OBJECT_EXPORTED_SHALLOWCMP(classname, wxEMPTY_PARAMETER_VALUE)
#def IMPLEMENT_VARIANT_OBJECT_EXPORTED_SHALLOWCMP(classname,expdecl) \
IMPLEMENT_VARIANT_OBJECT_EXPORTED_NO_EQ(classname,wxEMPTY_PARAMETER_VALUE expdecl) \
\
bool classname##VariantData::Eq(wxVariantData& data) const \
{\
    wxASSERT( GetType() == data.GetType() );\
\
    classname##VariantData & otherData = (classname##VariantData &) data;\
\
    return (otherData.m_value.IsSameAs(m_value));\
}\


// Since we want type safety wxVariant we need to fetch and dynamic_cast
// in a seemingly safe way so the compiler can check, so we define
// a dynamic_cast /wxDynamicCast analogue.

#def wxGetVariantCast(var,classname) \
    ((classname*)(var.IsValueKindOf(&classname::ms_classInfo) ?\
                  var.GetWxObjectPtr() : NULL));


    #def wxDynamicCastVariantData(data, classname) dynamic_cast<classname*>(data)

#def wxStaticCastVariantData(data, classname) static_cast<classname*>(data)

extern wxVariant wxNullVariant;

#endif // wxUSE_VARIANT

#endif // _WX_VARIANT_H_
