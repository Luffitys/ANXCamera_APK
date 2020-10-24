.class public final synthetic Lcom/android/camera/module/o0OoOo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Landroid/view/ViewGroup;

.field public final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/o0OoOo0;->OooO00o:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/camera/module/o0OoOo0;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/o0OoOo0;->OooO00o:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/camera/module/o0OoOo0;->OooO0O0:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/camera/module/DualVideoModule;->Oooo00O(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
