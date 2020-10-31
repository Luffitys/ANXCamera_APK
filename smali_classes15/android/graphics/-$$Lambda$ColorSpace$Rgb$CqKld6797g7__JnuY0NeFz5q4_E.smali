.class public final synthetic Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;->f$0:D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 5

    iget-wide v0, p0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;->f$0:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$4(DD)D

    move-result-wide p1

    return-wide p1
.end method
