.class final Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/remote/OnBinderDiedListener;


# instance fields
.field private final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->onBinderDied()V

    return-void
.end method
