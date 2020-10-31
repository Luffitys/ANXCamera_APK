.class public final synthetic Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/image/DynamicSystemClient;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$0:Landroid/os/image/DynamicSystemClient;

    iput p2, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$1:I

    iput p3, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$2:I

    iput-wide p4, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$3:J

    iput-object p6, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$4:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$0:Landroid/os/image/DynamicSystemClient;

    iget v1, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$1:I

    iget v2, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$2:I

    iget-wide v3, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$3:J

    iget-object v5, p0, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;->f$4:Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient;->lambda$handleMessage$0$DynamicSystemClient(IIJLjava/lang/Throwable;)V

    return-void
.end method
