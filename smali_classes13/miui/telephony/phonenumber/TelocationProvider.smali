.class public Lmiui/telephony/phonenumber/TelocationProvider;
.super Landroid/content/ContentProvider;
.source "TelocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/TelocationProvider$Contract;,
        Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;
    }
.end annotation


# static fields
.field public static final AREACODE_INDEX:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.core.telocation"

.field private static final COMMON_OPERATOR_INDEX_LENGTH:I = 0x3

.field private static final DATA_ASSET_NAME:Ljava/lang/String; = "telocation.idf"

.field public static final EMPTY:Ljava/lang/String; = ""

.field private static final IOT_NUMBER_LENGTH:I = 0xd

.field private static final IOT_OPERATOR_INDEX_LENGTH:I = 0x5

.field public static final LOCATION_INDEX:I = 0x0

.field public static final LOCATION_KIND:I = 0x0

.field private static final LONG_UNIQID_LENGTH:I = 0x8

.field private static final NORMAL_UNIQID_LENGTH:I = 0x7

.field private static final OPERATORS_DATA_ASSET_NAME:Ljava/lang/String; = "operators.dat"

.field private static final TAG:Ljava/lang/String; = "TelocationProvider"

.field private static final UNIQID_LEN8_NUMBER_ASSET_NAME:Ljava/lang/String; = "tel_uniqid_len8.dat"

.field public static final UNIQUE_ID_NONE:I = 0x0

.field private static final VIRTUAL_OPERATOR_INDEX_LENGTH:I = 0x4

.field private static final VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final XIAOMI_DATA_ASSET_NAME:Ljava/lang/String; = "xiaomi_mobile.dat"

.field private static final XIAOMI_OPERATOR_INDEX_LENGTH:I = 0x7

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

.field private final mOperatorsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqIdLen8Numbers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXiaomiMobileSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    const-string v1, "170"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    const-string v1, "171"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    const-string v1, "167"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    const-string v1, "162"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.core.telocation"

    const-string v2, "reload"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "query_location"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "query_area_code"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "parse_area_code"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "query_operator"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "query_version"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "query_uniq_id"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "query_area_code_by_address"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    return-object v0
.end method

.method private getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v1

    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getAreaCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x0

    :goto_1b
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3a

    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3a
    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_3c

    throw v1

    :cond_3f
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adminArea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " locality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    const-string v0, "\u7701"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5e02"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5e02"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u533a"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u53bf"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_c0
    goto :goto_9b

    :cond_c1
    const-string v0, ""

    return-object v0
.end method

.method private getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    if-nez p4, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    if-gtz v0, :cond_12

    return-object v1

    :cond_12
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    goto/16 :goto_c9

    :cond_f
    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_68

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x7

    if-ge v3, v5, :cond_2d

    const-string v0, ""

    return-object v0

    :cond_2d
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_48

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_38
    iget-object v6, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_43

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initxiaomiMobile()V

    :cond_43
    monitor-exit v3

    goto :goto_48

    :catchall_45
    move-exception v0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :goto_48
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-interface {p1, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->xiaomi_mobile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_7f

    :cond_68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_7f

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "1064"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {p1, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_7f
    :goto_7f
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_9a

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_8a
    iget-object v4, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_95

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initOperators()V

    :cond_95
    monitor-exit v3

    goto :goto_9a

    :catchall_97
    move-exception v0

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_97

    throw v0

    :cond_9a
    :goto_9a
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_ab
    const/4 v3, 0x4

    :goto_ac
    if-lt v3, v1, :cond_c6

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_c3
    add-int/lit8 v3, v3, -0x1

    goto :goto_ac

    :cond_c6
    const-string v0, ""

    return-object v0

    :cond_c9
    :goto_c9
    const-string v0, ""

    return-object v0
.end method

.method private initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V
    .registers 12

    const-string v0, "Failed to close reader"

    const-string v1, "TelocationProvider"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_68

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_23

    :cond_37
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "%s version: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_5e
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;->onReadRaw([Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_67} :catch_74
    .catchall {:try_start_5 .. :try_end_67} :catchall_72

    goto :goto_23

    :cond_68
    nop

    :try_start_69
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    :goto_6c
    goto :goto_90

    :catch_6d
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    :catchall_72
    move-exception v3

    goto :goto_91

    :catch_74
    move-exception v3

    :try_start_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_75 .. :try_end_89} :catchall_72

    nop

    if-eqz v2, :cond_90

    :try_start_8c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_6d

    goto :goto_6c

    :cond_90
    :goto_90
    return-void

    :goto_91
    if-eqz v2, :cond_9b

    :try_start_93
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9b
    :goto_9b
    throw v3
.end method

.method private initOperators()V
    .registers 3

    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$1;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$1;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "operators.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    return-void
.end method

.method private initReader()V
    .registers 6

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelocationProvider"

    if-eqz v0, :cond_38

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    :try_start_19
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read Telocation from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_38
    :goto_38
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v3, :cond_60

    :try_start_3c
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const-string v1, "Read Telocation from assets"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_58} :catch_5a

    nop

    goto :goto_60

    :catch_5a
    move-exception v1

    const-string v3, "Can\'t read telocation.idf, NO mobile telocation supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telocation version :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return-void
.end method

.method private initUniqIdLen8Numbers()V
    .registers 3

    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$3;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$3;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "tel_uniqid_len8.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    return-void
.end method

.method private initxiaomiMobile()V
    .registers 3

    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$2;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$2;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "xiaomi_mobile.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    return-void
.end method

.method private parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v1

    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniqId(Ljava/lang/CharSequence;IIZ)I
    .registers 12

    const/16 v0, 0x30

    if-lez p3, :cond_e

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_e

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p3, v2, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_1e
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_29

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initUniqIdLen8Numbers()V

    :cond_29
    monitor-exit v2

    goto :goto_2e

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :goto_2e
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    packed-switch v2, :pswitch_data_132

    const/4 v2, 0x2

    if-le p3, v2, :cond_131

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    mul-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1

    :pswitch_52
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x14

    return v1

    :pswitch_5c
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v0, :cond_7d

    if-eqz p4, :cond_7c

    if-lt p3, v4, :cond_7c

    add-int v2, p2, p3

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "1064"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    :cond_7c
    return v3

    :cond_7d
    if-eqz p4, :cond_131

    const/4 v2, 0x7

    if-lt p3, v2, :cond_131

    const v2, 0xf4240

    add-int/lit8 v5, p2, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v0

    const v6, 0x186a0

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v2, v3

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v5, v2

    const v2, 0x150ead

    if-ne v5, v2, :cond_ea

    if-le p3, v3, :cond_ea

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x38

    if-ne v2, v6, :cond_ea

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_ea

    add-int/lit8 v2, p2, 0x9

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_ea

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_ea

    return v1

    :cond_ea
    const/16 v1, 0x8

    if-lt p3, v1, :cond_106

    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    mul-int/lit8 v1, v5, 0xa

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int v5, v1, v2

    goto :goto_130

    :cond_106
    if-lt p3, v4, :cond_130

    const v1, 0x1583d0

    if-lt v5, v1, :cond_112

    const v1, 0x15aadf

    if-le v5, v1, :cond_11c

    :cond_112
    const v1, 0x103c40

    if-lt v5, v1, :cond_130

    const v1, 0x104027

    if-gt v5, v1, :cond_130

    :cond_11c
    mul-int/lit8 v1, v5, 0x64

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int v5, v1, v2

    :cond_130
    :goto_130
    return v5

    :cond_131
    :pswitch_131
    return v1

    :pswitch_data_132
    .packed-switch 0x30
        :pswitch_131
        :pswitch_5c
        :pswitch_52
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v1, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const-string v4, "length"

    const-string v5, "start"

    const-string v6, "number"

    packed-switch v3, :pswitch_data_126

    goto/16 :goto_121

    :pswitch_25
    const-string v2, "adminArea"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "locality"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {p0, v2, v3}, Lmiui/telephony/phonenumber/TelocationProvider;->getAreaCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto/16 :goto_121

    :pswitch_3a
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "enable_mobile"

    invoke-virtual {p1, v6, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v6, 0x6

    invoke-virtual {p0, v3, v5, v4, v2}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    goto/16 :goto_121

    :pswitch_69
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v2, :cond_70

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    :cond_70
    const/4 v2, 0x5

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v3}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_121

    :pswitch_7f
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v3, v4}, Lmiui/telephony/phonenumber/TelocationProvider;->getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto/16 :goto_121

    :pswitch_a4
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v4}, Lmiui/telephony/phonenumber/TelocationProvider;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_121

    :pswitch_c8
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v4}, Lmiui/telephony/phonenumber/TelocationProvider;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_121

    :pswitch_ec
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "with_area_code"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v3, v5, v4, v6}, Lmiui/telephony/phonenumber/TelocationProvider;->getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    goto :goto_121

    :pswitch_11d
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    nop

    :goto_121
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_11d
        :pswitch_ec
        :pswitch_c8
        :pswitch_a4
        :pswitch_7f
        :pswitch_69
        :pswitch_3a
        :pswitch_25
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
