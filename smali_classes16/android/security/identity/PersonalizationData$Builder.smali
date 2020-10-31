.class public final Landroid/security/identity/PersonalizationData$Builder;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mData:Landroid/security/identity/PersonalizationData;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/identity/PersonalizationData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/identity/PersonalizationData;-><init>(Landroid/security/identity/PersonalizationData$1;)V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    return-void
.end method


# virtual methods
.method public addAccessControlProfile(Landroid/security/identity/AccessControlProfile;)Landroid/security/identity/PersonalizationData$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    # getter for: Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/security/identity/PersonalizationData;->access$400(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/security/identity/PersonalizationData;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    return-object v0
.end method

.method public putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroid/security/identity/PersonalizationData$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfileId;",
            ">;[B)",
            "Landroid/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    # getter for: Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/security/identity/PersonalizationData;->access$100(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$NamespaceData;

    if-nez v0, :cond_1e

    new-instance v1, Landroid/security/identity/PersonalizationData$NamespaceData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/security/identity/PersonalizationData$NamespaceData;-><init>(Ljava/lang/String;Landroid/security/identity/PersonalizationData$1;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    # getter for: Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Landroid/security/identity/PersonalizationData;->access$100(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    # getter for: Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/security/identity/PersonalizationData$NamespaceData;->access$300(Landroid/security/identity/PersonalizationData$NamespaceData;)Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v2, Landroid/security/identity/PersonalizationData$EntryData;

    invoke-direct {v2, p4, p3}, Landroid/security/identity/PersonalizationData$EntryData;-><init>([BLjava/util/Collection;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
