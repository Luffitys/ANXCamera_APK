.class Landroid/security/identity/CredstoreResultData;
.super Landroid/security/identity/ResultData;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredstoreResultData$Builder;,
        Landroid/security/identity/CredstoreResultData$EntryData;
    }
.end annotation


# instance fields
.field mAuthenticatedData:[B

.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreResultData$EntryData;",
            ">;>;"
        }
    .end annotation
.end field

.field mMessageAuthenticationCode:[B

.field mStaticAuthenticationData:[B


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/security/identity/ResultData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    return-object v0
.end method

.method private getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;
    .registers 5

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/identity/CredstoreResultData$EntryData;

    return-object v1
.end method


# virtual methods
.method public getAuthenticatedData()[B
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/security/identity/CredstoreResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    iget-object v1, v0, Landroid/security/identity/CredstoreResultData$EntryData;->mValue:[B

    return-object v1
.end method

.method public getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getMessageAuthenticationCode()[B
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/identity/CredstoreResultData$EntryData;

    iget v4, v4, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    if-nez v4, :cond_38

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_38
    goto :goto_19

    :cond_39
    return-object v1
.end method

.method public getStaticAuthenticationData()[B
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/security/identity/CredstoreResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x2

    return v1

    :cond_8
    iget v1, v0, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    return v1
.end method
