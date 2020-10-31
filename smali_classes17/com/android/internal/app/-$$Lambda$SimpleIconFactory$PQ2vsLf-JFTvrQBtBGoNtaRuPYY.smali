.class public final synthetic Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/SimpleIconFactory;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;->f$0:Lcom/android/internal/app/SimpleIconFactory;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;->f$0:Lcom/android/internal/app/SimpleIconFactory;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;->f$1:Landroid/graphics/Rect;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/SimpleIconFactory;->lambda$createIconBitmap$1$SimpleIconFactory(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
