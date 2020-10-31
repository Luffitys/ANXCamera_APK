.class Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListViewTouchListener"
.end annotation


# instance fields
.field private mConfigs:[Lmiui/animation/base/AnimConfig;

.field private mFolmeTouchRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/animation/controller/FolmeTouch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;->mFolmeTouchRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiui/animation/base/AnimConfig;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;->mFolmeTouchRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/FolmeTouch;

    :goto_c
    if-eqz v0, :cond_1b

    if-nez p2, :cond_16

    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiui/animation/base/AnimConfig;

    # invokes: Lmiui/animation/controller/FolmeTouch;->onEventUp([Lmiui/animation/base/AnimConfig;)V
    invoke-static {v0, v1}, Lmiui/animation/controller/FolmeTouch;->access$500(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V

    goto :goto_1b

    :cond_16
    iget-object v1, p0, Lmiui/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiui/animation/base/AnimConfig;

    # invokes: Lmiui/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V
    invoke-static {v0, p1, p2, v1}, Lmiui/animation/controller/FolmeTouch;->access$600(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V

    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return v1
.end method
