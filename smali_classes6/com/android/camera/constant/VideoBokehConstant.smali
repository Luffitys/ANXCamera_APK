.class public Lcom/android/camera/constant/VideoBokehConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BEAUTY_CATEGORY_VIDEO_BOKEH:[Ljava/lang/String;

.field public static final MODE_VIDEO_BOKEH_BLUR:I = 0x6

.field public static final MODE_VIDEO_BOKEH_COLOR_POINT:I = 0x2

.field public static final MODE_VIDEO_BOKEH_COLOR_RETENTION:I = 0x1

.field public static final MODE_VIDEO_BOKEH_NULL:I = 0x0

.field public static final MODE_VIDEO_BOKEH_SPIN:I = 0x4

.field public static final MODE_VIDEO_BOKEH_ZOOM_IN:I = 0x3

.field public static final MODE_VIDEO_BOKEH_ZOOM_OUT:I = 0x5

.field public static final VIDEO_BOKEH_BLUR_NULL:Ljava/lang/String; = "key_video_bokeh_blur_null"

.field public static final VIDEO_BOKEH_BLUR_RATIO:Ljava/lang/String; = "key_video_bokeh_blur_ratio"

.field public static final VIDEO_BOKEH_COLOR_POINT_RATIO:Ljava/lang/String; = "key_video_bokeh_color_point_ratio"

.field public static final VIDEO_BOKEH_COLOR_RETENTION:Ljava/lang/String; = "key_video_bokeh_color_point_retention"

.field public static final VIDEO_BOKEH_SPIN_RATIO:Ljava/lang/String; = "key_video_bokeh_spin_ratio"

.field public static final VIDEO_BOKEH_ZOOM_IN_RATIO:Ljava/lang/String; = "key_video_bokeh_zoom_in_ratio"

.field public static final VIDEO_BOKEH_ZOOM_OUT_RATIO:Ljava/lang/String; = "key_video_bokeh_zoom_out_ratio"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "key_video_bokeh_blur_null"

    const-string v1, "key_video_bokeh_blur_ratio"

    const-string v2, "key_video_bokeh_spin_ratio"

    const-string v3, "key_video_bokeh_zoom_out_ratio"

    const-string v4, "key_video_bokeh_zoom_in_ratio"

    const-string v5, "key_video_bokeh_color_point_ratio"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/constant/VideoBokehConstant;->BEAUTY_CATEGORY_VIDEO_BOKEH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultValueByKey(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "key_video_bokeh_blur_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "key_video_bokeh_zoom_in_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "key_video_bokeh_spin_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "key_video_bokeh_color_point_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_4
    const-string v0, "key_video_bokeh_zoom_out_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x3c

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1b9ec6b0 -> :sswitch_4
        0x2874ca3e -> :sswitch_3
        0x54544710 -> :sswitch_2
        0x67dac6db -> :sswitch_1
        0x7c890f75 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVideoBokehMode(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "key_video_bokeh_blur_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "key_video_bokeh_zoom_in_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "key_video_bokeh_spin_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v7

    goto :goto_1

    :sswitch_3
    const-string v0, "key_video_bokeh_color_point_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "key_video_bokeh_zoom_out_ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v6

    goto :goto_1

    :sswitch_5
    const-string v0, "key_video_bokeh_blur_null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "key_video_bokeh_color_point_retention"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    move v1, v7

    goto :goto_2

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    :cond_6
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x76bcf82f -> :sswitch_6
        -0x35cb8f23 -> :sswitch_5
        0x1b9ec6b0 -> :sswitch_4
        0x2874ca3e -> :sswitch_3
        0x54544710 -> :sswitch_2
        0x67dac6db -> :sswitch_1
        0x7c890f75 -> :sswitch_0
    .end sparse-switch
.end method
