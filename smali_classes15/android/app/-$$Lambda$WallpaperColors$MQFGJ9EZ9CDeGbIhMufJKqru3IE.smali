.class public final synthetic Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;

    invoke-direct {v0}, Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;-><init>()V

    sput-object v0, Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;->INSTANCE:Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    check-cast p2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {p1, p2}, Landroid/app/WallpaperColors;->lambda$fromBitmap$1(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I

    move-result p1

    return p1
.end method
