.class public Lmiui/module/Module;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONTENT_DEFAULT:I = 0x0

.field public static final CONTENT_DEX:I = 0x1

.field public static final CONTENT_LIB:I = 0x2

.field public static final CONTENT_NONE:I = 0x0

.field public static final CONTENT_RES:I = 0x4


# instance fields
.field private content:I

.field private level:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()I
    .locals 0

    iget p0, p0, Lmiui/module/Module;->content:I

    return p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lmiui/module/Module;->level:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/module/Module;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(I)V
    .locals 0

    iput p1, p0, Lmiui/module/Module;->content:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lmiui/module/Module;->level:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/module/Module;->name:Ljava/lang/String;

    return-void
.end method
