.class public final synthetic Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/graphics/ColorSpace$Rgb;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;->f$0:Landroid/graphics/ColorSpace$Rgb;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 4

    iget-object v0, p0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;->f$0:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$8EkhO2jIf14tuA3BvrmYJMa7YXM(Landroid/graphics/ColorSpace$Rgb;D)D

    move-result-wide p1

    return-wide p1
.end method
