.class Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public host:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public port:I

.field public session:Lnet/majorkernelpanic/streaming/Session;

.field public transport:I

.field public username:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;-><init>()V

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 2

    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;-><init>()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    iput v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    iput p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    return-object v0
.end method
