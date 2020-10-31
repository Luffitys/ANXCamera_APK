.class public final synthetic Landroid/graphics/drawable/-$$Lambda$Drawable$KZt6g0-IxKV2yrq1V3HrWrb1kXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# static fields
.field public static final synthetic INSTANCE:Landroid/graphics/drawable/-$$Lambda$Drawable$KZt6g0-IxKV2yrq1V3HrWrb1kXg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/drawable/-$$Lambda$Drawable$KZt6g0-IxKV2yrq1V3HrWrb1kXg;

    invoke-direct {v0}, Landroid/graphics/drawable/-$$Lambda$Drawable$KZt6g0-IxKV2yrq1V3HrWrb1kXg;-><init>()V

    sput-object v0, Landroid/graphics/drawable/-$$Lambda$Drawable$KZt6g0-IxKV2yrq1V3HrWrb1kXg;->INSTANCE:Landroid/graphics/drawable/-$$Lambda$Drawable$KZt6g0-IxKV2yrq1V3HrWrb1kXg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .registers 2

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->lambda$getBitmapDrawable$0(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result p1

    return p1
.end method
