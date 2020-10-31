.class public final Landroid/timezone/TelephonyNetwork;
.super Ljava/lang/Object;
.source "TelephonyNetwork.java"


# instance fields
.field private final mDelegate:Llibcore/timezone/TelephonyNetwork;


# direct methods
.method constructor <init>(Llibcore/timezone/TelephonyNetwork;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Llibcore/timezone/TelephonyNetwork;

    iput-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

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

    check-cast v0, Landroid/timezone/TelephonyNetwork;

    iget-object v1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    iget-object v2, v0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    invoke-virtual {v1, v2}, Llibcore/timezone/TelephonyNetwork;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getCountryIsoCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    invoke-virtual {v0}, Llibcore/timezone/TelephonyNetwork;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    invoke-virtual {v0}, Llibcore/timezone/TelephonyNetwork;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    invoke-virtual {v0}, Llibcore/timezone/TelephonyNetwork;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetwork{mDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Llibcore/timezone/TelephonyNetwork;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
