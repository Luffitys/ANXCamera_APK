.class public final Landroid/graphics/fonts/SystemFonts;
.super Ljava/lang/Object;
.source "SystemFonts.java"


# static fields
.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final TAG:Ljava/lang/String; = "SystemFonts"

.field private static final sAliases:[Landroid/text/FontConfig$Alias;

.field private static final sAvailableFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    nop

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    invoke-static {v2, v3}, Landroid/graphics/fonts/SystemFonts;->readFontCustomization(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v2

    const-string v3, "/system/etc/fonts.xml"

    const-string v4, "/system/fonts/"

    invoke-static {v3, v4, v2, v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Landroid/util/ArrayMap;Ljava/util/ArrayList;)[Landroid/text/FontConfig$Alias;

    move-result-object v3

    sput-object v3, Landroid/graphics/fonts/SystemFonts;->sAliases:[Landroid/text/FontConfig$Alias;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Landroid/graphics/fonts/SystemFonts;->sSystemFallbackMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNamedFamily(Landroid/text/FontConfig$Family;Ljava/util/HashMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v3

    move-object v0, v6

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;Ljava/util/ArrayList;)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Landroid/util/ArrayMap;Ljava/util/ArrayList;)[Landroid/text/FontConfig$Alias;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)[",
            "Landroid/text/FontConfig$Alias;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Landroid/text/FontConfig;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_2a

    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_24

    goto :goto_27

    :cond_24
    invoke-static {v7, v2, v4, p4}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamily(Landroid/text/FontConfig$Family;Ljava/util/HashMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    :goto_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    iget-object v6, p2, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    iget-object v6, p2, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Family;

    invoke-static {v6, v2, v4, p4}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamily(Landroid/text/FontConfig$Family;Ljava/util/HashMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_41
    const/4 v5, 0x0

    :goto_42
    array-length v6, v3

    if-ge v5, v6, :cond_55

    aget-object v6, v3, v5

    if-eqz v5, :cond_4f

    invoke-virtual {v6}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_52

    :cond_4f
    invoke-static {v6, v4, v2, p4}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$Family;Landroid/util/ArrayMap;Ljava/util/Map;Ljava/util/ArrayList;)V

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_55
    const/4 v5, 0x0

    :goto_56
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/fonts/FontFamily;

    invoke-virtual {p3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_7b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p2, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/text/FontConfig$Alias;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/FontConfig$Alias;
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9c} :catch_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_9c} :catch_9d

    return-object v6

    :catch_9d
    move-exception v0

    const-string v1, "SystemFonts"

    const-string v2, "Failed initialize system fallbacks."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-class v1, Landroid/text/FontConfig$Alias;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/FontConfig$Alias;

    return-object v1
.end method

.method private static createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;Ljava/util/ArrayList;)Landroid/graphics/fonts/FontFamily;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)",
            "Landroid/graphics/fonts/FontFamily;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_81

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$Font;

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    if-nez v6, :cond_34

    invoke-interface {p4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_77

    :cond_2a
    invoke-static {v5}, Landroid/graphics/fonts/SystemFonts;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_34

    goto :goto_77

    :cond_34
    :try_start_34
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v6, v8, p2}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v8

    if-eqz v8, :cond_4e

    const/4 v4, 0x1

    goto :goto_4f

    :cond_4e
    nop

    :goto_4f
    invoke-virtual {v7, v4}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_67} :catch_7a

    nop

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_74

    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v7, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v7

    goto :goto_77

    :cond_74
    invoke-virtual {v0, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_7a
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_81
    if-nez v0, :cond_84

    goto :goto_88

    :cond_84
    invoke-virtual {v0, p2, p3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZ)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    :goto_88
    return-object v1
.end method

.method public static getAliases()[Landroid/text/FontConfig$Alias;
    .registers 1

    sget-object v0, Landroid/graphics/fonts/SystemFonts;->sAliases:[Landroid/text/FontConfig$Alias;

    return-object v0
.end method

.method public static getAvailableFonts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getRawSystemFallbackMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/graphics/fonts/SystemFonts;->sSystemFallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getSystemFallback(Ljava/lang/String;)[Landroid/graphics/fonts/FontFamily;
    .registers 4

    sget-object v0, Landroid/graphics/fonts/SystemFonts;->sSystemFallbackMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontFamily;

    if-nez v0, :cond_16

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sSystemFallbackMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/fonts/FontFamily;

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    return-object v1
.end method

.method private static mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_23

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_23

    return-object v2

    :catchall_19
    move-exception v1

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    :try_start_1f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static pushFamilyToFallback(Landroid/text/FontConfig$Family;Landroid/util/ArrayMap;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getLanguages()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFallbackFor()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_29

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_29
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3a

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v11

    invoke-virtual {v10, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_40
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    goto :goto_57

    :cond_48
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v9

    move-object v3, v7

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;Ljava/util/ArrayList;)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    :goto_57
    move-object v11, v1

    const/4 v1, 0x0

    move v12, v1

    :goto_5a
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v12, v1, :cond_a4

    nop

    invoke-virtual {p1, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    if-nez v13, :cond_7a

    if-eqz v11, :cond_a1

    invoke-virtual {p1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_7a
    nop

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v13

    move-object v3, v7

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;Ljava/util/ArrayList;)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    if-eqz v1, :cond_96

    invoke-virtual {p1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_96
    if-eqz v11, :cond_a1

    invoke-virtual {p1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    :goto_a1
    add-int/lit8 v12, v12, 0x1

    goto :goto_5a

    :cond_a4
    return-void
.end method

.method private static readFontCustomization(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/fonts/FontCustomizationParser$Result;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_17

    :try_start_5
    invoke-static {v0, p1}, Landroid/graphics/fonts/FontCustomizationParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_c} :catch_17

    return-object v1

    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string v1, "SystemFonts"

    const-string v2, "Failed to parse font customization XML"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v1}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    return-object v1

    :catch_25
    move-exception v0

    new-instance v1, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v1}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    return-object v1
.end method
