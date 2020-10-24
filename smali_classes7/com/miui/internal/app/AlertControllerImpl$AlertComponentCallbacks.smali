.class Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field private mImplRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;->mImplRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;->mImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/AlertControllerImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImpl;->access$800(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImpl;->access$900(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->access$1000(Lcom/miui/internal/app/AlertControllerImpl;I)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
