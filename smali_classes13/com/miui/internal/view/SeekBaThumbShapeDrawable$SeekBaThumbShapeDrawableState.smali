.class public Lcom/miui/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;
.super Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/SeekBaThumbShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeekBaThumbShapeDrawableState"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    return-void
.end method


# virtual methods
.method protected newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object v0
.end method
