.class Landroid/security/identity/CredstoreResultData$Builder;
.super Ljava/lang/Object;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredstoreResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mResultData:Landroid/security/identity/CredstoreResultData;


# direct methods
.method constructor <init>([B[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/identity/CredstoreResultData;

    invoke-direct {v0}, Landroid/security/identity/CredstoreResultData;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p1, v0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p2, v0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p3, v0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    return-void
.end method

.method private getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreResultData$EntryData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    # getter for: Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;
    invoke-static {v0}, Landroid/security/identity/CredstoreResultData;->access$000(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1d

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    # getter for: Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;
    invoke-static {v1}, Landroid/security/identity/CredstoreResultData;->access$000(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v0
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/identity/CredstoreResultData$Builder;
    .registers 7

    invoke-direct {p0, p1}, Landroid/security/identity/CredstoreResultData$Builder;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/security/identity/CredstoreResultData$EntryData;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Landroid/security/identity/CredstoreResultData$EntryData;-><init>([BI)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroid/security/identity/CredstoreResultData$Builder;
    .registers 7

    invoke-direct {p0, p1}, Landroid/security/identity/CredstoreResultData$Builder;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/security/identity/CredstoreResultData$EntryData;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3}, Landroid/security/identity/CredstoreResultData$EntryData;-><init>([BI)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method build()Landroid/security/identity/CredstoreResultData;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    return-object v0
.end method
