.class public Lcom/miui/filtersdk/filter/helper/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilter(Lcom/miui/filtersdk/filter/helper/FilterType;ZZ)Lcom/miui/filtersdk/filter/base/ColorLookupFilter;
    .locals 8

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/helper/FilterType;->getResources()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    if-eqz v0, :cond_3

    array-length v2, v0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/filtersdk/filter/helper/FilterFactory$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterCategory:[I

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/helper/FilterType;->getFilterCategory()Lcom/miui/filtersdk/filter/helper/FilterCategory;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/16 v6, 0x200

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    aget-object p1, v0, v7

    invoke-direct {v2, p1, v6}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_1
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    aget-object p1, v0, v7

    invoke-direct {v2, p1, v6}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    aget-object p1, v0, v7

    invoke-direct {v2, p1, v6}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_3
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    if-eqz p1, :cond_0

    aget-object p1, v0, v4

    goto :goto_0

    :cond_0
    aget-object p1, v0, v7

    :goto_0
    invoke-direct {v2, p1, v6}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_4
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    aget-object p1, v0, v7

    invoke-direct {v2, p1, v6}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_5
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    aget-object p1, v0, v7

    invoke-direct {v2, p1, v5}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_6
    new-instance v2, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    aget-object p1, v0, v4

    goto :goto_1

    :cond_2
    aget-object p1, v0, v7

    :goto_1
    invoke-direct {v2, p1, v5}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;I)V

    :goto_2
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterFactory;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FilterType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the resources corresponding to [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/miui/filtersdk/filter/helper/FilterType;->getFilterCategory()Lcom/miui/filtersdk/filter/helper/FilterCategory;

    move-result-object v5

    if-ne v5, p0, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/miui/filtersdk/filter/helper/FilterType;

    return-object p0
.end method
