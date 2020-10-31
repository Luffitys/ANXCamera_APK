.class Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;)I
    .registers 5

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    check-cast p2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;->compare(Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;)I

    move-result p1

    return p1
.end method
