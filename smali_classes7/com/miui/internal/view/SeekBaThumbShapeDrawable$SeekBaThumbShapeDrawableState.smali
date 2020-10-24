.class public Lcom/miui/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;
.super Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
.source ""


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    return-void
.end method


# virtual methods
.method protected newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object p0
.end method
