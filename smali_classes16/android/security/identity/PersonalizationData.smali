.class public Landroid/security/identity/PersonalizationData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/PersonalizationData$Builder;,
        Landroid/security/identity/PersonalizationData$EntryData;,
        Landroid/security/identity/PersonalizationData$NamespaceData;
    }
.end annotation


# instance fields
.field private mNamespaces:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/security/identity/PersonalizationData$NamespaceData;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/identity/PersonalizationData$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/identity/PersonalizationData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method getAccessControlProfiles()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getNamespaceData(Ljava/lang/String;)Landroid/security/identity/PersonalizationData$NamespaceData;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$NamespaceData;

    return-object v0
.end method

.method getNamespaces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
