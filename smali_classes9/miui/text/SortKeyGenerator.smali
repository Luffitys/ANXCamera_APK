.class public Lmiui/text/SortKeyGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;


# instance fields
.field private mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/text/SortKeyGenerator$1;

    invoke-direct {v0}, Lmiui/text/SortKeyGenerator$1;-><init>()V

    sput-object v0, Lmiui/text/SortKeyGenerator;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/text/SortKeyGenerator$NameStyle;->values()[Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lmiui/text/SortKeyGenerator$BaseGenerator;

    iput-object v0, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lmiui/text/SortKeyGenerator$BaseGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    aput-object v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/text/SortKeyGenerator;-><init>()V

    return-void
.end method

.method private declared-synchronized getForSort(Lmiui/text/SortKeyGenerator$NameStyle;)Lmiui/text/SortKeyGenerator$BaseGenerator;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    if-ne p1, v1, :cond_0

    new-instance v0, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    iget-object v1, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object v0, v1, p1

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    sget-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lmiui/text/SortKeyGenerator;
    .locals 1

    sget-object v0, Lmiui/text/SortKeyGenerator;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/SortKeyGenerator;

    return-object v0
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->guessFullNameStyle(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/text/SortKeyGenerator;->getForSort(Lmiui/text/SortKeyGenerator$NameStyle;)Lmiui/text/SortKeyGenerator$BaseGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
