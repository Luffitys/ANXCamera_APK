.class public Lcom/xiaomi/recordmediaprocess/PngShowInfo;
.super Ljava/lang/Object;
.source "PngShowInfo.java"


# instance fields
.field public display_height:I

.field public display_width:I

.field public png_path:Ljava/lang/String;

.field public position_x:I

.field public position_y:I

.field public start_show_time:J

.field public stop_show_time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->png_path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->png_path:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->png_path:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->start_show_time:J

    iput-wide p4, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->stop_show_time:J

    iput p6, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->display_width:I

    iput p7, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->display_height:I

    iput p8, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->position_x:I

    iput p9, p0, Lcom/xiaomi/recordmediaprocess/PngShowInfo;->position_y:I

    return-void
.end method
