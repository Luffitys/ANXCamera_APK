.class public final Landroid/app/ActivityManager$TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mColorSpace:Landroid/graphics/ColorSpace;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mId:J

.field private mIsRealSnapshot:Z

.field private mIsTranslucent:Z

.field private mOrientation:I

.field private mPixelFormat:I

.field private mRotation:I

.field private mSnapshot:Landroid/graphics/GraphicBuffer;

.field private mSystemUiVisibility:I

.field private mTaskSize:Landroid/graphics/Point;

.field private mTopActivity:Landroid/content/ComponentName;

.field private mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/ActivityManager$TaskSnapshot;
    .registers 18

    move-object/from16 v0, p0

    new-instance v16, Landroid/app/ActivityManager$TaskSnapshot;

    iget-wide v2, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mId:J

    iget-object v4, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mSnapshot:Landroid/graphics/GraphicBuffer;

    iget-object v6, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v7, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mOrientation:I

    iget v8, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mRotation:I

    iget-object v9, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v10, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-boolean v12, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v13, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mWindowingMode:I

    iget v14, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mSystemUiVisibility:I

    iget-boolean v15, v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mIsTranslucent:Z

    const/4 v11, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;ZZIIZ)V

    return-object v16
.end method

.method public getPixelFormat()I
    .registers 2

    iget v0, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public setColorSpace(Landroid/graphics/ColorSpace;)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public setContentInsets(Landroid/graphics/Rect;)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setId(J)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mId:J

    return-object p0
.end method

.method public setIsRealSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mIsRealSnapshot:Z

    return-object p0
.end method

.method public setIsTranslucent(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mIsTranslucent:Z

    return-object p0
.end method

.method public setOrientation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mOrientation:I

    return-object p0
.end method

.method public setPixelFormat(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mPixelFormat:I

    return-object p0
.end method

.method public setRotation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mRotation:I

    return-object p0
.end method

.method public setSnapshot(Landroid/graphics/GraphicBuffer;)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mSnapshot:Landroid/graphics/GraphicBuffer;

    return-object p0
.end method

.method public setSystemUiVisibility(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mSystemUiVisibility:I

    return-object p0
.end method

.method public setTaskSize(Landroid/graphics/Point;)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public setTopActivityComponent(Landroid/content/ComponentName;)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setWindowingMode(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskSnapshot$Builder;->mWindowingMode:I

    return-object p0
.end method
