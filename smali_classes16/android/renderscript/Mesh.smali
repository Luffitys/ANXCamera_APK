.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/renderscript/Mesh;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitiveCount()I
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .registers 3

    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexAllocationCount()I
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method updateFromNative()V
    .registers 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    iget-object v1, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    move-result v1

    iget-object v2, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    move-result v2

    new-array v3, v1, [J

    new-array v4, v2, [J

    new-array v11, v2, [I

    iget-object v5, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3, v1}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    iget-object v5, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move-object v8, v4

    move-object v9, v11

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    new-array v5, v1, [Landroid/renderscript/Allocation;

    iput-object v5, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-array v5, v2, [Landroid/renderscript/Allocation;

    iput-object v5, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-array v5, v2, [Landroid/renderscript/Mesh$Primitive;

    iput-object v5, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    const/4 v5, 0x0

    :goto_49
    const-wide/16 v6, 0x0

    if-ge v5, v1, :cond_6f

    aget-wide v8, v3, v5

    cmp-long v6, v8, v6

    if-eqz v6, :cond_6c

    iget-object v6, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget-wide v13, v3, v5

    iget-object v15, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v7

    invoke-direct/range {v12 .. v17}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v6, v5

    iget-object v6, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->updateFromNative()V

    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_6f
    const/4 v5, 0x0

    :goto_70
    if-ge v5, v2, :cond_a0

    aget-wide v8, v4, v5

    cmp-long v8, v8, v6

    if-eqz v8, :cond_91

    iget-object v8, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v9, Landroid/renderscript/Allocation;

    aget-wide v13, v4, v5

    iget-object v15, v0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v9

    invoke-direct/range {v12 .. v17}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v9, v8, v5

    iget-object v8, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/renderscript/Allocation;->updateFromNative()V

    :cond_91
    iget-object v8, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v9

    aget v10, v11, v5

    aget-object v9, v9, v10

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_a0
    return-void
.end method
