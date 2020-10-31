.class Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumInfo"
.end annotation


# instance fields
.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/MusicControlScreenElement$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>()V

    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    move-object p1, v0

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, p2

    :goto_11
    move-object p2, v0

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, p3

    :goto_1a
    move-object p3, v0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, 0x1

    :goto_37
    if-eqz v0, :cond_3f

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    :cond_3f
    return v0
.end method
