.class public Lmiui/text/SortKeyGenerator;
.super Ljava/lang/Object;
.source "SortKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;,
        Lmiui/text/SortKeyGenerator$NameStyle;,
        Lmiui/text/SortKeyGenerator$BaseGenerator;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/text/SortKeyGenerator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/text/SortKeyGenerator$1;

    invoke-direct {v0}, Lmiui/text/SortKeyGenerator$1;-><init>()V

    sput-object v0, Lmiui/text/SortKeyGenerator;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/text/SortKeyGenerator$NameStyle;->values()[Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lmiui/text/SortKeyGenerator$BaseGenerator;

    iput-object v0, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v1}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v1

    new-instance v2, Lmiui/text/SortKeyGenerator$BaseGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    aput-object v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/text/SortKeyGenerator;-><init>()V

    return-void
.end method

.method private declared-synchronized getForSort(Lmiui/text/SortKeyGenerator$NameStyle;)Lmiui/text/SortKeyGenerator$BaseGenerator;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-virtual {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1e

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    if-ne p1, v1, :cond_1e

    new-instance v1, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    move-object v0, v1

    iget-object v1, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-virtual {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    :cond_1e
    if-nez v0, :cond_2b

    iget-object v1, p0, Lmiui/text/SortKeyGenerator;->mUtils:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v2}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v2

    aget-object v1, v1, v2
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    goto :goto_2c

    :cond_2b
    move-object v1, v0

    :goto_2c
    monitor-exit p0

    return-object v1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lmiui/text/SortKeyGenerator;
    .registers 1

    sget-object v0, Lmiui/text/SortKeyGenerator;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/SortKeyGenerator;

    return-object v0
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->guessFullNameStyle(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/text/SortKeyGenerator;->getForSort(Lmiui/text/SortKeyGenerator$NameStyle;)Lmiui/text/SortKeyGenerator$BaseGenerator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
