.class public Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;
.super Landroid/os/Binder;
.source ""


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    return-object p0
.end method
