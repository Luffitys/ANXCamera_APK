.class final Landroid/telecom/CallRedirectionService$CallRedirectionBinder;
.super Lcom/android/internal/telecom/ICallRedirectionService$Stub;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallRedirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallRedirectionBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/CallRedirectionService;


# direct methods
.method private constructor <init>(Landroid/telecom/CallRedirectionService;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallRedirectionService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/CallRedirectionService;Landroid/telecom/CallRedirectionService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;-><init>(Landroid/telecom/CallRedirectionService;)V

    return-void
.end method


# virtual methods
.method public placeCall(Lcom/android/internal/telecom/ICallRedirectionAdapter;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 8

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;->this$0:Landroid/telecom/CallRedirectionService;

    # getter for: Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/CallRedirectionService;->access$100(Landroid/telecom/CallRedirectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
