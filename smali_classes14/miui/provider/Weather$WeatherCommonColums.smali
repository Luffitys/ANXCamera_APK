.class Lmiui/provider/Weather$WeatherCommonColums;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherCommonColums"
.end annotation


# static fields
.field public static final CITY_ID:Ljava/lang/String; = "city_id"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/provider/Weather$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/provider/Weather$WeatherCommonColums;-><init>()V

    return-void
.end method
