.class public final synthetic Lcom/android/internal/graphics/-$$Lambda$ColorUtils$zbDH-52c8D9XBeqmvTHi3Boxl14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/-$$Lambda$ColorUtils$zbDH-52c8D9XBeqmvTHi3Boxl14;->f$0:I

    return-void
.end method


# virtual methods
.method public final calculateContrast(III)D
    .registers 5

    iget v0, p0, Lcom/android/internal/graphics/-$$Lambda$ColorUtils$zbDH-52c8D9XBeqmvTHi3Boxl14;->f$0:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$calculateMinimumBackgroundAlpha$0(IIII)D

    move-result-wide p1

    return-wide p1
.end method
