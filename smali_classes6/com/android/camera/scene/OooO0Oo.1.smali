.class public final synthetic Lcom/android/camera/scene/OooO0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/OooO0Oo;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scene/OooO0Oo;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {p0}, Lcom/android/camera/scene/SemanticsClassResultParse;->OooO0o0(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    return-void
.end method
