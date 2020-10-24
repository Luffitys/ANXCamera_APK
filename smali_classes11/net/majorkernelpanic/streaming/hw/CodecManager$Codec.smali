.class Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public formats:[Ljava/lang/Integer;

.field public isHardwareAccelerated:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;->formats:[Ljava/lang/Integer;

    iput-boolean p3, p0, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;->isHardwareAccelerated:Z

    return-void
.end method
