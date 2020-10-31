.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .registers 25

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v14, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v4, v14

    const/4 v1, 0x0

    iput v1, v3, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput v1, v3, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()J

    move-result-wide v17

    move-wide/from16 v1, v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v13, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v13

    iget-object v5, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v5, v5, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iget-object v6, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v6, v6, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iget-object v7, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v7, v7, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iget-object v8, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v8, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iget-object v9, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v9, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iget-object v10, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v10, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iget-object v11, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v11, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iget-object v12, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v12, v12, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    move/from16 v19, v13

    iget-object v13, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v13, v13, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    move/from16 v20, v14

    iget-object v14, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v14, v14, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iget-object v15, v3, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v15, v15, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    const/16 v21, 0x0

    move/from16 v3, v21

    invoke-virtual/range {v0 .. v16}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/renderscript/RenderScriptGL;->mContext:J

    iget-wide v0, v2, Landroid/renderscript/RenderScriptGL;->mContext:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7f

    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v0, v2}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, v2, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iget-object v0, v2, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    return-void

    :cond_7f
    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string v1, "Failed to create RS context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .registers 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(J)V

    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .registers 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(J)V

    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .registers 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(J)V

    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .registers 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(J)V

    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .registers 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(J)V

    return-void
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .registers 1

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .registers 5

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :cond_a
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v0, v1

    :cond_c
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method
