.class public final Landroid/miui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/miui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LockPatternView:[I

.field public static final LockPatternView_arrowGreenUpBmp:I = 0x0

.field public static final LockPatternView_arrowRedUpBmp:I = 0x1

.field public static final LockPatternView_aspect:I = 0x2

.field public static final LockPatternView_btnDefaultBackgroundBmp:I = 0x3

.field public static final LockPatternView_btnDefaultBmp:I = 0x4

.field public static final LockPatternView_btnRedBmp:I = 0x5

.field public static final LockPatternView_btnTouchedBmp:I = 0x6

.field public static final LockPatternView_circleDefaultBmp:I = 0x7

.field public static final LockPatternView_circleGreenBmp:I = 0x8

.field public static final LockPatternView_circleRedBmp:I = 0x9

.field public static final LockPatternView_diameterFactor:I = 0xa

.field public static final LockPatternView_paintColor:I = 0xb

.field public static final LockPatternView_pathStrokeAlpha:I = 0xc

.field public static final LockPatternView_wrongColor:I = 0xd

.field public static final SpectrumVisualizer:[I

.field public static final SpectrumVisualizer_alpha_width:I = 0x0

.field public static final SpectrumVisualizer_care_streamactive:I = 0x1

.field public static final SpectrumVisualizer_sliding_dot_bar:I = 0x2

.field public static final SpectrumVisualizer_sliding_panel:I = 0x3

.field public static final SpectrumVisualizer_sliding_shadow_dot_bar:I = 0x4

.field public static final SpectrumVisualizer_symmetry:I = 0x5

.field public static final SpectrumVisualizer_update_enable:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/miui/R$styleable;->LockPatternView:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Landroid/miui/R$styleable;->SpectrumVisualizer:[I

    return-void

    :array_12
    .array-data 4
        0x11030001
        0x11030002
        0x11030003
        0x11030004
        0x11030005
        0x11030006
        0x11030007
        0x11030009
        0x1103000a
        0x1103000b
        0x1103000c
        0x1103000d
        0x1103000e
        0x11030014
    .end array-data

    :array_32
    .array-data 4
        0x11030000
        0x11030008
        0x1103000f
        0x11030010
        0x11030011
        0x11030012
        0x11030013
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
