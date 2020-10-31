.class public final Landroid/graphics/fonts/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamily$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontFamily"


# instance fields
.field private final mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativePtr:J


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/fonts/FontFamily;->mFonts:Ljava/util/ArrayList;

    iput-wide p2, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;JLandroid/graphics/fonts/FontFamily$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/fonts/FontFamily;-><init>(Ljava/util/ArrayList;J)V

    return-void
.end method


# virtual methods
.method public getFont(I)Landroid/graphics/fonts/Font;
    .registers 3

    iget-object v0, p0, Landroid/graphics/fonts/FontFamily;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    return-object v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    return-wide v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontFamily;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
