.class public Landroid/util/apk/VerityBuilder$VerityResult;
.super Ljava/lang/Object;
.source "VerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/VerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerityResult"
.end annotation


# instance fields
.field public final merkleTreeSize:I

.field public final rootHash:[B

.field public final verityData:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iput p2, p0, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    iput-object p3, p0, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;I[BLandroid/util/apk/VerityBuilder$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/util/apk/VerityBuilder$VerityResult;-><init>(Ljava/nio/ByteBuffer;I[B)V

    return-void
.end method
