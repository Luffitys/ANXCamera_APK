.class Lnet/majorkernelpanic/streaming/Session$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$4;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$4;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->syncStop()V

    return-void
.end method
