.class public Lmiui/hybrid/PageContext;
.super Ljava/lang/Object;
.source "PageContext.java"


# instance fields
.field private id:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    :cond_12
    move-object v2, p1

    check-cast v2, Lmiui/hybrid/PageContext;

    iget-object v3, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    iget-object v4, v2, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    if-ne v3, v4, :cond_1c

    return v0

    :cond_1c
    if-eqz v3, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    return v0

    :cond_28
    :goto_28
    return v1

    :cond_29
    :goto_29
    return v1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/PageContext;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v2, v3

    return v2
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/PageContext;->url:Ljava/lang/String;

    return-void
.end method
