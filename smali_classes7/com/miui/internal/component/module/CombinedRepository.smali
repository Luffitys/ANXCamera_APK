.class public Lcom/miui/internal/component/module/CombinedRepository;
.super Lmiui/module/Repository;
.source ""


# instance fields
.field private repositories:[Lmiui/module/Repository;


# direct methods
.method public varargs constructor <init>([Lmiui/module/Repository;)V
    .locals 0

    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/CombinedRepository;->repositories:[Lmiui/module/Repository;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/miui/internal/component/module/CombinedRepository;->repositories:[Lmiui/module/Repository;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/miui/internal/component/module/CombinedRepository;->repositories:[Lmiui/module/Repository;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
