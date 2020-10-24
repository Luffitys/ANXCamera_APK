.class public Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic a:Lcom/arcsoft/avatar/emoticon/EmoInfo;

.field public asBackGround:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

.field public asForeGround:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

.field public backGroundPath:Ljava/lang/String;

.field public foreGroundPath:Ljava/lang/String;

.field public index:I

.field public processInfo:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

.field public time:F


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar/emoticon/EmoInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->a:Lcom/arcsoft/avatar/emoticon/EmoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->index:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->time:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->asForeGround:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    iput-object v0, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    iput-object v0, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    new-instance v0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    const/16 v1, 0x100

    invoke-direct {v0, v1, v1, p1, p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;-><init>(IIIZ)V

    iput-object v0, p0, Lcom/arcsoft/avatar/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    return-void
.end method
