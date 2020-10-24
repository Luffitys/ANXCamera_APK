.class public final synthetic Lcom/android/camera/module/o00Oo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DualVideoModule;

.field public final synthetic OooO0O0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DualVideoModule;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/o00Oo0;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iput-object p2, p0, Lcom/android/camera/module/o00Oo0;->OooO0O0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/o00Oo0;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iget-object p0, p0, Lcom/android/camera/module/o00Oo0;->OooO0O0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/DualVideoModule;->OooOo0O(Landroid/view/ViewGroup;)V

    return-void
.end method
