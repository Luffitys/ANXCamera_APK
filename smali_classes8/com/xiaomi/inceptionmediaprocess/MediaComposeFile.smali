.class public Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "MediaComposeFile"


# instance fields
.field private m_compose_file:J

.field private m_media_graph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_media_graph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    return-void
.end method

.method private static native BeginComposeJni()V
.end method

.method private static native CancelComposeJni()V
.end method

.method private static native ConstructMediaComposeFileJni(JIIIILcom/xiaomi/inceptionmediaprocess/EffectNotifier;)Z
.end method

.method private static native DestructMediaComposeFileJni()V
.end method

.method private static native SetComposeFileNameJni(Ljava/lang/String;)V
.end method


# virtual methods
.method public BeginCompose()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->BeginComposeJni()V

    return-void
.end method

.method public CancelCompose()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->CancelComposeJni()V

    return-void
.end method

.method public ConstructMediaComposeFile(IIIILcom/xiaomi/inceptionmediaprocess/EffectNotifier;)Z
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_media_graph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    if-nez v0, :cond_0

    sget-object p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    const-string p1, "effect graph is null, failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->GetGraphLine()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->ConstructMediaComposeFileJni(JIIIILcom/xiaomi/inceptionmediaprocess/EffectNotifier;)Z

    sget-object p1, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct compose file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public DestructMediaComposeFile()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->DestructMediaComposeFileJni()V

    return-void
.end method

.method public SetComposeFileName(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetComposeFileName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->SetComposeFileNameJni(Ljava/lang/String;)V

    return-void
.end method

.method public SetMediaEffectGraph(Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;->m_media_graph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    return-void
.end method
