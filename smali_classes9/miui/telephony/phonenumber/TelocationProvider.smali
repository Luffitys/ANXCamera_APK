.class public Lmiui/telephony/phonenumber/TelocationProvider;
.super Landroid/content/ContentProvider;
.source ""


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

.field private static final XIAOMI_DATA_ASSET_NAME:Ljava/lang/String; = "xiaomi_mobile.dat"

.field private static final XIAOMI_OPERATOR_INDEX_LENGTH:I = 0x7

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

.field private mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

.field private final mOperatorsMap:Ljava/util/HashMap;

.field private final mUniqIdLen8Numbers:Ljava/util/HashSet;

.field private final mXiaomiMobileSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    .locals 1

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
    .locals 0

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    return-object p0
.end method

.method private getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p1

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getAreaCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v3, v1, v2, v1}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
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

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

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

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method private getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p4, :cond_1

    return-object v1

    :cond_1
    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p1

    if-gtz p1, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/2addr p3, p2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, 0x7

    if-ge p3, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    monitor-enter p3

    :try_start_0
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initxiaomiMobile()V

    :cond_2
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    iget-object p3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$string;->xiaomi_mobile:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_6

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "1064"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_6
    :goto_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initOperators()V

    :cond_7
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_8
    :goto_2
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_9
    :goto_3
    if-lt v2, v1, :cond_b

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_b
    const-string p0, ""

    return-object p0

    :cond_c
    :goto_4
    const-string p0, ""

    return-object p0
.end method

.method private initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V
    .locals 6

    const-string p0, "Failed to close reader"

    const-string v0, "TelocationProvider"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "%s version: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v1, v1, v5

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;->onReadRaw([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p2

    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    throw p1
.end method

.method private initOperators()V
    .locals 2

    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$1;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$1;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "operators.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    return-void
.end method

.method private initReader()V
    .locals 5

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelocationProvider"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read Telocation from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const-string v0, "Read Telocation from assets"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "Can\'t read telocation.idf, NO mobile telocation supported!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telocation version :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private initUniqIdLen8Numbers()V
    .locals 2

    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$3;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$3;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "tel_uniqid_len8.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    return-void
.end method

.method private initxiaomiMobile()V
    .locals 2

    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$2;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$2;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "xiaomi_mobile.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    return-void
.end method

.method private parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p1

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUniqId(Ljava/lang/CharSequence;IIZ)I
    .locals 7

    const/16 v0, 0x30

    if-lez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p3, v2, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initUniqIdLen8Numbers()V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    packed-switch v3, :pswitch_data_0

    const/4 p0, 0x2

    if-le p3, p0, :cond_b

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    sub-int/2addr p3, v0

    mul-int/2addr p3, v4

    add-int/lit8 p4, p2, 0x1

    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    sub-int/2addr p4, v0

    add-int/2addr p3, p4

    mul-int/2addr p3, v4

    add-int/2addr p2, p0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v0

    add-int/2addr p3, p0

    return p3

    :pswitch_0
    add-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x14

    return p0

    :pswitch_1
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v0, :cond_5

    if-eqz p4, :cond_4

    if-lt p3, v5, :cond_4

    add-int v3, p2, p3

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "1064"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    return v4

    :cond_5
    if-eqz p4, :cond_b

    const/4 p4, 0x7

    if-lt p3, p4, :cond_b

    const v3, 0xf4240

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    const v6, 0x186a0

    mul-int/2addr v2, v6

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x2710

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    const v3, 0x150ead

    if-ne v2, v3, :cond_6

    if-le p3, v4, :cond_6

    add-int/lit8 v3, p2, 0x7

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x38

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, p2, 0x8

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_6

    add-int/lit8 v3, p2, 0x9

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_6

    add-int/lit8 v3, p2, 0xa

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_6

    return v1

    :cond_6
    const/16 v1, 0x8

    if-lt p3, v1, :cond_7

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr p2, p4

    :goto_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    goto :goto_2

    :cond_7
    if-lt p3, v5, :cond_a

    const p0, 0x1583d0

    if-lt v2, p0, :cond_8

    const p0, 0x15aadf

    if-le v2, p0, :cond_9

    :cond_8
    const p0, 0x103c40

    if-lt v2, p0, :cond_a

    const p0, 0x104027

    if-gt v2, p0, :cond_a

    :cond_9
    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 p0, p2, 0x7

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v0

    mul-int/2addr p0, v4

    add-int/2addr v2, p0

    add-int/2addr p2, v1

    goto :goto_1

    :cond_a
    :goto_2
    return v2

    :cond_b
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    new-instance p2, Landroid/database/MatrixCursor;

    sget-object p3, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object p3, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    array-length p3, p3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p3, v0

    sget-object p5, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p5

    const-string v0, "length"

    const-string v1, "start"

    const-string v2, "number"

    packed-switch p5, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p4, "adminArea"

    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "locality"

    invoke-virtual {p1, p5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x7

    invoke-direct {p0, p4, p1}, Lmiui/telephony/phonenumber/TelocationProvider;->getAreaCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p5

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "enable_mobile"

    invoke-virtual {p1, v2, p4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p4, 0x6

    invoke-virtual {p0, p5, v1, v0, p1}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    :cond_0
    const/4 p1, 0x5

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    invoke-direct {p0, p4, p5, p1}, Lmiui/telephony/phonenumber/TelocationProvider;->getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p4, p5, p1}, Lmiui/telephony/phonenumber/TelocationProvider;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p4, p5, p1}, Lmiui/telephony/phonenumber/TelocationProvider;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "with_area_code"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p5, v1, v0, p1}, Lmiui/telephony/phonenumber/TelocationProvider;->getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p4

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    :goto_0
    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
