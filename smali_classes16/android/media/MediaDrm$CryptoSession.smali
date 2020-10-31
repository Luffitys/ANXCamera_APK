.class public final Landroid/media/MediaDrm$CryptoSession;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CryptoSession"
.end annotation


# instance fields
.field private mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    # invokes: Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    invoke-static {p1, p2, p3}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    # invokes: Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    invoke-static {p1, p2, p4}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .registers 6

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    # invokes: Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[B[B)[B
    .registers 6

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    # invokes: Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$300(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign([B[B)[B
    .registers 5

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    # invokes: Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B
    invoke-static {v0, v1, p1, p2}, Landroid/media/MediaDrm;->access$500(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public verify([B[B[B)Z
    .registers 6

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    # invokes: Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$600(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result v0

    return v0
.end method
