.class public final synthetic Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# static fields
.field public static final synthetic INSTANCE:Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;

    invoke-direct {v0}, Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;-><init>()V

    sput-object v0, Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;->INSTANCE:Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/widget/ImageView;->lambda$getDrawableFromUri$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
