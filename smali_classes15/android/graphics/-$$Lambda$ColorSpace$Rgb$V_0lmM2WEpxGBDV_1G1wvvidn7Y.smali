.class public final synthetic Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/graphics/ColorSpace$Rgb$TransferParameters;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;->f$0:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 4

    iget-object v0, p0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;->f$0:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p1

    return-wide p1
.end method
