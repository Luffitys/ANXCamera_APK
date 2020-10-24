.class public final synthetic Lcom/android/camera/module/o0O0O00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/o0O0O00;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iput-boolean p2, p0, Lcom/android/camera/module/o0O0O00;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/o0O0O00;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-boolean p0, p0, Lcom/android/camera/module/o0O0O00;->OooO0O0:Z

    invoke-static {v0, p0}, Lcom/android/camera/module/DualVideoModule;->Oooo0O0(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V

    return-void
.end method
