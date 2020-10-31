.class public Lcom/miui/internal/component/module/CombinedRepository;
.super Lmiui/module/Repository;
.source "CombinedRepository.java"


# instance fields
.field private repositories:[Lmiui/module/Repository;


# direct methods
.method public varargs constructor <init>([Lmiui/module/Repository;)V
    .registers 2

    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/CombinedRepository;->repositories:[Lmiui/module/Repository;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/component/module/CombinedRepository;->repositories:[Lmiui/module/Repository;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/component/module/CombinedRepository;->repositories:[Lmiui/module/Repository;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3, p1, p2}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method
