.class public Lmiui/hybrid/feature/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_LOOKUP:Ljava/lang/String; = "lookup"

.field private static final ACTION_PICK_PHONE_NUMBER:Ljava/lang/String; = "pickPhoneNumber"

.field private static final KEY_CONTACT_LIST:Ljava/lang/String; = "contactList"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final KEY_PHONE_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_PHONE_TYPE:Ljava/lang/String; = "type"

.field private static final PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final REQUEST_CODE_PICK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "display_name"

    const-string v1, "data4"

    const-string v2, "data2"

    const-string v3, "data3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p0, p1}, Lmiui/hybrid/feature/Contact;->getContactsByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p0, p1}, Lmiui/hybrid/feature/Contact;->getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .registers 8

    sget-object v2, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_69

    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "displayName"

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "number"

    const-string v3, "data4"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "label"

    const-string v3, "data3"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_54} :catch_5c
    .catchall {:try_start_12 .. :try_end_54} :catchall_5a

    :cond_54
    if-eqz v0, :cond_69

    :goto_56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_5a
    move-exception v2

    goto :goto_63

    :catch_5c
    move-exception v2

    :try_start_5d
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    if-eqz v0, :cond_69

    goto :goto_56

    :goto_63
    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_68
    throw v2

    :cond_69
    :goto_69
    return-object v1
.end method

.method private static getContactsByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v4, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_81

    :goto_20
    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "displayName"

    const-string v5, "display_name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "number"

    const-string v5, "data4"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    const-string v5, "data2"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "label"

    const-string v5, "data3"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_6a} :catch_74
    .catchall {:try_start_20 .. :try_end_6a} :catchall_72

    nop

    goto :goto_20

    :cond_6c
    if-eqz v2, :cond_81

    :goto_6e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_81

    :catchall_72
    move-exception v3

    goto :goto_7b

    :catch_74
    move-exception v3

    :try_start_75
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_72

    if-eqz v2, :cond_81

    goto :goto_6e

    :goto_7b
    if-eqz v2, :cond_80

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_80
    throw v3

    :cond_81
    :goto_81
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_86
    const-string v4, "contactList"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_86 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_90
    return-object v3
.end method

.method private lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getRawParams()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/hybrid/feature/Contact;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_31

    move-object v0, v1

    nop

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lmiui/hybrid/feature/Contact$1;

    invoke-direct {v2, p0, v1, p1}, Lmiui/hybrid/feature/Contact$1;-><init>(Lmiui/hybrid/feature/Contact;Landroid/content/ContentResolver;Lmiui/hybrid/Request;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x0

    return-object v3

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xcc

    const-string v3, "param not valid"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    :cond_15
    return-object v0
.end method

.method private pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 8

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmiui/hybrid/feature/Contact$2;

    invoke-direct {v2, p0, v0, p1}, Lmiui/hybrid/feature/Contact$2;-><init>(Lmiui/hybrid/feature/Contact;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    invoke-virtual {v0, v2}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .registers 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return-object v0

    :cond_1b
    :goto_1b
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object v0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 5

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Contact;->pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Contact;->lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcc

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
