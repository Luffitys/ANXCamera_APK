.class public Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final moduleNames:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->moduleNames:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->moduleNames:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->moduleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;
    .locals 2

    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;Lcom/google/android/play/core/splitinstall/SplitInstallRequest$1;)V

    return-object v0
.end method
