.class public Lmiui/maml/MamlConfigSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MamlConfigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlConfigSettings$ImagePickerItem;,
        Lmiui/maml/MamlConfigSettings$AppPickerItem;,
        Lmiui/maml/MamlConfigSettings$PickerItem;,
        Lmiui/maml/MamlConfigSettings$NumberInputItem;,
        Lmiui/maml/MamlConfigSettings$NumberChoiceItem;,
        Lmiui/maml/MamlConfigSettings$StringChoiceItem;,
        Lmiui/maml/MamlConfigSettings$ValueChoiceItem;,
        Lmiui/maml/MamlConfigSettings$StringInputItem;,
        Lmiui/maml/MamlConfigSettings$CheckboxItem;,
        Lmiui/maml/MamlConfigSettings$VariableItem;,
        Lmiui/maml/MamlConfigSettings$Item;,
        Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;,
        Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final EXTRA_MAML_CODE:Ljava/lang/String; = "maml_code"

.field public static final EXTRA_MAML_ID:Ljava/lang/String; = "maml_id"

.field public static final EXTRA_MAML_PATH:Ljava/lang/String; = "maml_path"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlConfigSettings"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"


# instance fields
.field private mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

.field private mNextRequestCode:I

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/maml/MamlConfigSettings$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCodeObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    const/16 v0, 0x64

    iput v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/MamlConfigSettings;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/maml/MamlConfigSettings;)I
    .registers 2

    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->getNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lmiui/maml/MamlConfigSettings;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/MamlConfigSettings;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static containsConfig(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/maml/MamlConfigSettings;->containsConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_15

    const-string v3, ""

    goto :goto_16

    :cond_15
    move-object v3, p1

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "config.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_32
    .catchall {:try_start_5 .. :try_end_26} :catchall_30

    if-eqz v3, :cond_29

    const/4 v0, 0x1

    :cond_29
    nop

    :try_start_2a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v3

    :goto_2f
    return v0

    :catchall_30
    move-exception v0

    goto :goto_3f

    :catch_32
    move-exception v2

    :try_start_33
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    if-eqz v1, :cond_3e

    :try_start_38
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    :goto_3b
    goto :goto_3e

    :catch_3c
    move-exception v2

    goto :goto_3b

    :cond_3e
    :goto_3e
    return v0

    :goto_3f
    if-eqz v1, :cond_46

    :try_start_41
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    move-exception v2

    :cond_46
    :goto_46
    throw v0
.end method

.method public static containsLockstyleConfig()Z
    .registers 2

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .registers 6

    const-string v0, "lockstyle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Lmiui/maml/MamlConfigSettings;->getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_12
    new-instance v0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0

    :cond_1c
    new-instance v0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const-string v1, "text"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "summary"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    new-instance v2, Lmiui/maml/MamlConfigSettings$2;

    invoke-direct {v2, p0, v0}, Lmiui/maml/MamlConfigSettings$2;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceCategory;)V

    invoke-static {p2, v1, v2}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .registers 4

    const-string v0, "StringInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Lmiui/maml/MamlConfigSettings$StringInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_f
    const-string v0, "CheckBox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lmiui/maml/MamlConfigSettings$CheckboxItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$CheckboxItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_1d
    const-string v0, "NumberInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_2b
    const-string v0, "StringChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_39
    const-string v0, "NumberChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_47
    const-string v0, "AppPicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Lmiui/maml/MamlConfigSettings$AppPickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_55
    const-string v0, "ImagePicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$ImagePickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-object v0

    :cond_63
    return-object v1
.end method

.method private createPreferenceScreen()V
    .registers 9

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    move-object v2, v4

    iget-object v4, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_26
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_26} :catch_90
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_26} :catch_86
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_26} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_72
    .catchall {:try_start_11 .. :try_end_26} :catchall_70

    move-object v3, v4

    if-nez v3, :cond_33

    if-eqz v3, :cond_31

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_31

    :catch_2f
    move-exception v4

    goto :goto_32

    :cond_31
    :goto_31
    nop

    :goto_32
    return-void

    :cond_33
    :try_start_33
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5
    :try_end_3b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_33 .. :try_end_3b} :catch_90
    .catch Lorg/xml/sax/SAXException; {:try_start_33 .. :try_end_3b} :catch_86
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_72
    .catchall {:try_start_33 .. :try_end_3b} :catchall_70

    if-nez v5, :cond_47

    if-eqz v3, :cond_45

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_45

    :catch_43
    move-exception v6

    goto :goto_46

    :cond_45
    :goto_45
    nop

    :goto_46
    return-void

    :cond_47
    :try_start_47
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_51
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_47 .. :try_end_51} :catch_90
    .catch Lorg/xml/sax/SAXException; {:try_start_47 .. :try_end_51} :catch_86
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_51} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_72
    .catchall {:try_start_47 .. :try_end_51} :catchall_70

    if-nez v6, :cond_5d

    if-eqz v3, :cond_5b

    :try_start_55
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5b

    :catch_59
    move-exception v6

    goto :goto_5c

    :cond_5b
    :goto_5b
    nop

    :goto_5c
    return-void

    :cond_5d
    :try_start_5d
    const-string v6, "Group"

    new-instance v7, Lmiui/maml/MamlConfigSettings$1;

    invoke-direct {v7, p0, v0}, Lmiui/maml/MamlConfigSettings$1;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;)V

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    :try_end_67
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5d .. :try_end_67} :catch_90
    .catch Lorg/xml/sax/SAXException; {:try_start_5d .. :try_end_67} :catch_86
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_72
    .catchall {:try_start_5d .. :try_end_67} :catchall_70

    if-eqz v3, :cond_6f

    :try_start_69
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_6f

    :catch_6d
    move-exception v4

    goto :goto_9a

    :cond_6f
    :goto_6f
    goto :goto_9a

    :catchall_70
    move-exception v4

    goto :goto_9b

    :catch_72
    move-exception v4

    :try_start_73
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    if-eqz v3, :cond_6f

    :try_start_78
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_6d

    goto :goto_6f

    :catch_7c
    move-exception v4

    :try_start_7d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_70

    if-eqz v3, :cond_6f

    :try_start_82
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_6d

    goto :goto_6f

    :catch_86
    move-exception v4

    :try_start_87
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_70

    if-eqz v3, :cond_6f

    :try_start_8c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_6d

    goto :goto_6f

    :catch_90
    move-exception v4

    :try_start_91
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_70

    if-eqz v3, :cond_6f

    :try_start_96
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_6d

    goto :goto_6f

    :goto_9a
    return-void

    :goto_9b
    if-eqz v3, :cond_a3

    :try_start_9d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a3

    :catch_a1
    move-exception v5

    goto :goto_a4

    :cond_a3
    :goto_a3
    nop

    :goto_a4
    throw v4
.end method

.method public static getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v0, "local_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.thememanager.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method private getNextRequestCode()I
    .registers 3

    iget v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    return v0
.end method

.method private getRequestCodeObj(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private putRequestCodeObj(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->getRequestCodeObj(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Lmiui/maml/MamlConfigSettings$PickerItem;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lmiui/maml/MamlConfigSettings$PickerItem;

    invoke-virtual {v1, p2, p3}, Lmiui/maml/MamlConfigSettings$PickerItem;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maml_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maml_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "maml_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lmiui/maml/MamlConfigSettings;->createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    const-string v4, "config.xml"

    invoke-virtual {v3, v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->containsFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->finish()V

    return-void

    :cond_33
    const v3, 0x110b000f

    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings;->setContentView(I)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const v4, 0x110e00de

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->createPreferenceScreen()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->close()V

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->finish()V

    :cond_c
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/MamlConfigSettings$Item;

    if-nez v1, :cond_10

    const/4 v2, 0x0

    return v2

    :cond_10
    invoke-virtual {v1, p2}, Lmiui/maml/MamlConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v3}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    :cond_1b
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/MamlConfigSettings$Item;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$Item;->onClick()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method
