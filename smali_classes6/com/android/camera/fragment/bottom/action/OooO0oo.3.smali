.class public final synthetic Lcom/android/camera/fragment/bottom/action/OooO0oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field public final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/OooO0oo;->OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput p2, p0, Lcom/android/camera/fragment/bottom/action/OooO0oo;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/OooO0oo;->OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget p0, p0, Lcom/android/camera/fragment/bottom/action/OooO0oo;->OooO0O0:I

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->OooO0OO(I)V

    return-void
.end method
