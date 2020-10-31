.class Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlertComponentCallbacks"
.end annotation


# instance fields
.field private mImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/app/AlertControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;->mImplRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$AlertComponentCallbacks;->mImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/AlertControllerImpl;

    if-nez v0, :cond_b

    return-void

    :cond_b
    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$800(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_32

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$900(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->setupWindow(I)V
    invoke-static {v0, v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$1000(Lcom/miui/internal/app/AlertControllerImpl;I)V

    :cond_32
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
