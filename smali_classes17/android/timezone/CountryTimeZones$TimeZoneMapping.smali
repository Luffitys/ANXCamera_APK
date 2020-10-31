.class public final Landroid/timezone/CountryTimeZones$TimeZoneMapping;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeZoneMapping"
.end annotation


# instance fields
.field private mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;


# direct methods
.method constructor <init>(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    iput-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    iget-object v1, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    iget-object v2, v0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v1, v2}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
