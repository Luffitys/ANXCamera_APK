.class final Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p0}, Lokhttp3/internal/ws/RealWebSocket;->cancel()V

    return-void
.end method
